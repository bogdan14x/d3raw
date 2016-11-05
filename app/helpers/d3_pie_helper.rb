module D3PieHelper
  def d3_pie_fancy
    content_tag(:div, nil, id: 'd3raw_chart') +
    javascript_tag(
      <<~HEREDOC
        var pie = new d3pie("#d3raw_chart", {
          "footer": {
            "color": "#999999",
            "fontSize": 10,
            "font": "open sans",
            "location": "bottom-left"
          },
          "size": {
            "canvasWidth": 590,
            "pieOuterRadius": "90%"
          },
          "data": {
            "sortOrder": "value-desc",
            "content": [
              {
                "label": "JavaScript",
                "value": 264131,
                "color": "#2484c1"
              },
              {
                "label": "Ruby",
                "value": 218812,
                "color": "#0c6197"
              },
              {
                "label": "Java",
                "value": 157618,
                "color": "#4daa4b"
              },
              {
                "label": "PHP",
                "value": 114384,
                "color": "#90c469"
              },
              {
                "label": "Python",
                "value": 95002,
                "color": "#daca61"
              },
              {
                "label": "C+",
                "value": 78327,
                "color": "#e4a14b"
              },
              {
                "label": "C",
                "value": 67706,
                "color": "#e98125"
              },
              {
                "label": "Objective-C",
                "value": 36344,
                "color": "#cb2121"
              },
              {
                "label": "Shell",
                "value": 28561,
                "color": "#830909"
              },
              {
                "label": "Cobol",
                "value": 24131,
                "color": "#923e99"
              },
              {
                "label": "C#",
                "value": 100,
                "color": "#ae83d5"
              },
              {
                "label": "Coldfusion",
                "value": 68,
                "color": "#bf273e"
              },
              {
                "label": "Fortran",
                "value": 218812,
                "color": "#ce2aeb"
              },
              {
                "label": "Coffeescript",
                "value": 157618,
                "color": "#bca44a"
              },
              {
                "label": "Node",
                "value": 114384,
                "color": "#618d1b"
              },
              {
                "label": "Basic",
                "value": 95002,
                "color": "#1ee67b"
              },
              {
                "label": "Cola",
                "value": 36344,
                "color": "#b0ec44"
              },
              {
                "label": "Perl",
                "value": 32170,
                "color": "#a4a0c9"
              },
              {
                "label": "Dart",
                "value": 28561,
                "color": "#322849"
              },
              {
                "label": "Go",
                "value": 264131,
                "color": "#86f71a"
              },
              {
                "label": "Groovy",
                "value": 218812,
                "color": "#d1c87f"
              },
              {
                "label": "Processing",
                "value": 157618,
                "color": "#7d9058"
              },
              {
                "label": "Smalltalk",
                "value": 114384,
                "color": "#44b9b0"
              },
              {
                "label": "Scala",
                "value": 95002,
                "color": "#7c37c0"
              },
              {
                "label": "Visual Basic",
                "value": 78327,
                "color": "#cc9fb1"
              },
              {
                "label": "Scheme",
                "value": 67706,
                "color": "#e65414"
              },
              {
                "label": "Rust",
                "value": 36344,
                "color": "#8b6834"
              },
              {
                "label": "FoxPro",
                "value": 32170,
                "color": "#248838"
              }
            ]
          },
          "labels": {
            "outer": {
              "pieDistance": 32
            },
            "inner": {
              "hideWhenLessThanPercentage": 3
            },
            "mainLabel": {
              "fontSize": 11
            },
            "percentage": {
              "color": "#ffffff",
              "decimalPlaces": 0
            },
            "value": {
              "color": "#adadad",
              "fontSize": 11
            },
            "lines": {
              "enabled": true
            },
            "truncation": {
              "enabled": true
            }
          },
          "effects": {
            "pullOutSegmentOnClick": {
              "effect": "linear",
              "speed": 400,
              "size": 8
            }
          },
          "misc": {
            "gradient": {
              "enabled": true,
              "percentage": 100
            }
          }
          });
      HEREDOC
    )
  end

  def d3_pie_simple
    content_tag(:div, nil, id: 'd3raw_chart') +
    javascript_tag(
      <<~HEREDOC
        var w = 590;
        var h = 590;
        var r = h/2;
        var color = d3.scale.category20c().range(["#13293D","#006494","#247BA0", "#73ABC2"]);

        var data = [
          {
            "label": "JavaScript",
            "value": 264131,
            "color": "#2484c1"
          },
          {
            "label": "Ruby",
            "value": 218812,
            "color": "#0c6197"
          },
          {
            "label": "Java",
            "value": 157618,
            "color": "#4daa4b"
          },
          {
            "label": "PHP",
            "value": 114384,
            "color": "#90c469"
          },
          {
            "label": "Python",
            "value": 95002,
            "color": "#daca61"
          },
          {
            "label": "C+",
            "value": 78327,
            "color": "#e4a14b"
          },
          {
            "label": "C",
            "value": 67706,
            "color": "#e98125"
          },
          {
            "label": "Objective-C",
            "value": 36344,
            "color": "#cb2121"
          },
          {
            "label": "Fortran",
            "value": 218812,
            "color": "#ce2aeb"
          },
          {
            "label": "Coffeescript",
            "value": 157618,
            "color": "#bca44a"
          },
          {
            "label": "Node",
            "value": 114384,
            "color": "#618d1b"
          },
          {
            "label": "Basic",
            "value": 95002,
            "color": "#1ee67b"
          },
          {
            "label": "Go",
            "value": 264131,
            "color": "#86f71a"
          },
          {
            "label": "Groovy",
            "value": 218812,
            "color": "#d1c87f"
          },
          {
            "label": "Processing",
            "value": 157618,
            "color": "#7d9058"
          },
          {
            "label": "Smalltalk",
            "value": 114384,
            "color": "#44b9b0"
          },
          {
            "label": "Visual Basic",
            "value": 78327,
            "color": "#cc9fb1"
          }
          ];


        var vis = d3.select('#d3raw_chart').append("svg:svg").data([data]).attr("width", w).attr("height", h).append("svg:g").attr("transform", "translate(" + r + "," + r + ")");
        var pie = d3.layout.pie().value(function(d){return d.value;});

        var arc = d3.svg.arc().outerRadius(r/1.3);

        var arcs = vis.selectAll("g.slice").data(pie).enter().append("svg:g").attr("class", "slice");
        arcs.append("svg:path")
          .attr("fill", function(d, i){
              return data[i].color;
          })
          .attr("d", function (d) {
              return arc(d);
          });
        arcs.append("svg:text").attr("transform", function(d){
            d.innerRadius = r;
            d.outerRadius = r;
          return "translate(" + arc.centroid(d) + ")";}).attr("text-anchor", "middle").text( function(d, i) {
          return data[i].label;}
          );
        var paths = document.querySelectorAll("#d3raw_chart path");
        for(i=0; i<paths.length; i++) {
          paths[i].style.stroke = "#fff";
        }
      HEREDOC
    )
  end
end
