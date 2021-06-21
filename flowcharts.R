##Script for creating flowcharts in R
#Package: DiagrammeR
#Code modified from source https://towardsdatascience.com/r-visualizations-flow-charts-in-r-4cfa7f783872
#https://rstudio-pubs-static.s3.amazonaws.com/90261_ad00e95221e14a33a50f2ebb56d34ab8.html

install.packages("DiagrammeR")
library(DiagrammeR)

grViz("digraph flowchart {
      # node definitions with substituted label text
      node [fontname = Arial, size = 20, shape = rectangle, 
      color = Beige, style = filled, fontcolor = Black]        
      tab1 [label = '@@1']
      tab2 [label = '@@2']
      tab3 [label = '@@3', color = lightblue]
      tab4 [label = '@@4']
      tab5 [label = '@@5']
      tab6 [label = '@@6', color = coral]
      tab7 [label = '@@7', color = aquamarine]
      tab8 [label = '@@8', color = aquamarine]
      tab9 [label = '@@9', color = aquamarine]
      tab10 [label = '@@10', color = aquamarine]
      tab11 [label = '@@11', color = aquamarine]
      tab12 [label = '@@12', color = aquamarine]
      tab13 [label = '@@13', color = aquamarine]

      # edge definitions with the node IDs
      tab1 -> tab2;
      tab2 -> tab3;
      tab2 -> tab4;
      tab4 -> tab5;
      tab5 -> tab6;
      tab3 -> tab7 [color = blue];
      tab3 -> tab8 [color = blue];
      tab3 -> tab9 [color = blue];
      tab3 -> tab10 [color = blue];
      tab6 -> tab7 [color = brown];
      tab6 -> tab8 [color = brown];
      tab6 -> tab9 [color = brown];
      tab9 -> tab10 [color = black];
      tab3 -> tab11 [color = blue];
      tab6 -> tab11 [color = brown];
      tab3 -> tab12 [color = blue];
      tab6-> tab12 [color = brown];
      tab3-> tab13 [color = blue];
      tab6 -> tab13 [color = brown]
      }
      
      [1]: 'Name1'
      [2]: 'Name2'
      [3]: 'Name3'
      [4]: 'Name4'
      [5]: 'Name4'
      [6]: 'Name5'
      [7]: 'Name6'
      [8]: 'Name7'
      [9]: 'Name8'
      [10]: 'Name9'
      [11]: 'Name10'
      [12]: 'Name11'
      [13]: 'Name12'
   ", engine = "dot")
