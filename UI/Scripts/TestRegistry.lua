local merged = {};

for _, v in ipairs(require("Scripts.TestRegistries.FlexTests")) do
  table.insert(merged, v);
end

for _, v in ipairs(require("Scripts.TestRegistries.PaddingTests")) do
  table.insert(merged, v);
end

return merged;