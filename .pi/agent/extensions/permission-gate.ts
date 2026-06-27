// Pi Extension: Permission Gate
// Gates destructive file operations behind user confirmation dialogs.
// Place in: ~/.pi/agent/extensions/permission-gate.ts
// Reload Pi with /reload after adding.

import type { ExtensionAPI, ExtensionContext } from "@earendil-works/pi-coding-agent";

// Tools that always require confirmation
const CONFIRM_TOOLS = new Set(["write", "edit"]);

// Tools that are allowed without confirmation
const ALLOW_TOOLS = new Set(["read", "bash"]);

export default function (pi: ExtensionAPI) {
  pi.on("tool_call", async (event, ctx) => {
    const toolName = event.toolName;

    // Always allow read operations
    if (ALLOW_TOOLS.has(toolName) || !CONFIRM_TOOLS.has(toolName)) {
      return;
    }

    // Build a descriptive prompt based on the tool and its input
    let detail = "";

    if (toolName === "write" && event.input) {
      const path = (event.input as any).path || "unknown path";
      detail = `File: ${path}`;
    } else if (toolName === "edit" && event.input) {
      const path = (event.input as any).path || "unknown path";
      detail = `File: ${path}`;
    } else if (toolName === "bash" && event.input) {
      const command = (event.input as any).command || "";
      detail = `Command: ${command}`;
    }

    const ok = await ctx.ui.confirm(
      "Permission Required",
      `Allow "${toolName}" operation?\n\n${detail}`
    );

    if (!ok) {
      return {
        block: true,
        reason: `Blocked by user: denied "${toolName}" operation`,
      };
    }
  });

  // Optional: notify on startup that the gate is active
  pi.on("session_start", async (_event, ctx) => {
    ctx.ui.notify("Permission Gate: Active", "info");
  });
}
