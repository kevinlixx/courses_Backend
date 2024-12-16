import { verifyRequestByKeyId } from "@copilot-extensions/preview-sdk";

const { isValid, cache } = await verifyRequestByKeyId(
  request.body,
  signature,
  keyId,
  {
    token: process.env.GITHUB_TOKEN,
  },
);
// isValid: true or false
// cache: { id, keys }