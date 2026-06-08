return {
  {
    "Image Padding With Text Content",
    "An image that has 15px uniform padding and text content. The image should be a smaller white square due to the padding.",
    require("Scripts.Padding.ImageWithTextContent")
  };
  {
    "Image With Widget Padding With Text Content",
    "An image that has an inner widget and 15px uniform padding. The widget has text content. The text will clip at the inner content edge caused by the padding.",
    require("Scripts.Padding.ImageWithWidgetContentWithText")
  };
  {
    "Horizontal Flex with Wrap, Gap, Center Align, and Padding",
    "A horizontal flex container with wrap, gap, center alignment, and padding. Padding is on the entire flex, element 1, and element 2's inner widget to pad the text. The text-containing widget only has top padding.",
    require("Scripts.Padding.HorizontalWrapGapAlignCenter")
  };
  {
    "Container With Padding and an Image",
    "A container with padding and an image inside. The container has only left padding, and the image should be smaller due to the padding. The container is invisible and the Morrowind-style window does not reflect the container's size.",
    require("Scripts.Padding.ContainerWithImagePadding")
  };
  {
    "Text With Padding",
    "A text element with 20px uniform padding. This will have no effect on the text's size or position since padding does not affect text elements, but it also should not cause any errors.",
    require("Scripts.Padding.TextWithPadding")
  };
}