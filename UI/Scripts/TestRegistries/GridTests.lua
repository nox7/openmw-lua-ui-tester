return {
  {
    "Basic 3-Column Grid";
    "Grid widget with padding and three template columns sized at 1/3 in relativeSize. Each child is 50x50 with no special alignments or cell expansions.";
    require("Scripts.Grid.BasicGrid");
  };
  {
    "Grid With Relative Sized Child";
    "Three-column grid with the second child set to relativeSize = (1, 1). The second child will expand to fill the available space in its cell. It should touch sibling cells on the right and bottom.";
    require("Scripts.Grid.GridWithRelativeSizeChild");
  };
  {
    "Grid With Gap";
    "Three-column grid with a gap of 20 between cells. All children are relativeSize = (1, 1) and will fill their cells. The gap should be visible between the cells.";
    require("Scripts.Grid.BasicGridWithGap");
  };
  {
    "Grid With Row Gap";
    "Three-column grid with a row gap of 20 between rows. All children are relativeSize = (1, 1) and will fill their cells. The row gap should be visible between the rows.";
    require("Scripts.Grid.BasicGridWithRowGap");
  };
  {
    "Grid With Column Gap";
    "Three-column grid with a column gap of 20 between columns. All children are relativeSize = (1, 1) and will fill their cells. The column gap should be visible between the columns.";
    require("Scripts.Grid.BasicGridWithColumnGap");
  };
  {
    "Grid With Vertical Alignment";
    "Three-column grid with vertical alignment set to center. Aligns every grid child to the vertical center of the cell.";
    require("Scripts.Grid.GridWithVAlignment");
  };
  {
    "Grid With Horizontal Alignment";
    "Three-column grid with horizontal alignment set to center. Aligns every grid child to the horizontal center of the cell.";
    require("Scripts.Grid.GridWithHAlignment");
  };
  {
    "Grid With Vertical Align Child";
    "Three-column grid with the second child set to be vertically aligned to the center.";
    require("Scripts.Grid.GridWithVAlignChild");
  };
  {
    "Grid With Horizontal Align Child";
    "Three-column grid with the second child set to be horizontally aligned to the center.";
    require("Scripts.Grid.GridWithHAlignChild");
  };
  {
    "Grid Child Padding";
    "Three-column grid with the second child set to have padding of 10 on all sides.";
    require("Scripts.Grid.BasicGridWithChildPadding");
  };
  {
    "Grid Text Child";
    "Three-column grid with the second child set to be a text widget.";
    require("Scripts.Grid.BasicGridTextChild");
  };
  {
    "Grid Text Child Vertically Aligned";
    "Three-column grid with the second child set to be a text widget vertically aligned to the center.";
    require("Scripts.Grid.BasicGridTextChildVAlign");
  };
}