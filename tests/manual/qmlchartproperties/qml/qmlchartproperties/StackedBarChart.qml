// Copyright (C) 2016 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 2.0
import QtCharts 2.0

ChartView {
    title: "Stacked bar series"
    anchors.fill: parent
    theme: ChartView.ChartThemeLight
    legend.alignment: Qt.AlignBottom
    animationOptions: ChartView.SeriesAnimations

    property variant series: mySeries

    StackedBarSeries {
        id: mySeries
        name: "bar"
        labelsFormat: "@value";
        axisX: BarCategoryAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
        BarSet { label: "Bob"; values: [2, 2, 3, 4, 5, 6]
            onClicked:                  console.log("barset.onClicked: " + index);
            onHovered:                  console.log("barset.onHovered: " + status + " " + index);
            onPenChanged:               console.log("barset.onPenChanged: " + pen);
            onBrushChanged:             console.log("barset.onBrushChanged: " + brush);
            onLabelChanged:             console.log("barset.onLabelChanged: " + label);
            onLabelBrushChanged:        console.log("barset.onLabelBrushChanged: " + labelBrush);
            onLabelFontChanged:         console.log("barset.onLabelFontChanged: " + labelFont);
            onColorChanged:             console.log("barset.onColorChanged: " + color);
            onBorderColorChanged:       console.log("barset.onBorderColorChanged: " + color);
            onLabelColorChanged:        console.log("barset.onLabelColorChanged: " + color);
            onCountChanged:             console.log("barset.onCountChanged: " + count);
            onValuesAdded:              console.log("barset.onValuesAdded: " + index + ", " + count);
            onValuesRemoved:            console.log("barset.onValuesRemoved: " + index + ", " + count);
            onValueChanged:             console.log("barset.onValuesChanged: " + index);
            onPressed:                  console.log("barset.onPressed: " + index);
            onReleased:                 console.log("barset.onReleased: " + index);
            onDoubleClicked:            console.log("barset.onDoubleClicked: " + index);
        }
        BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 7] }
        BarSet { label: "James"; values: [3, 5, 8, 13, 5, 8] }

        onNameChanged:              console.log("stackedBarSeries.onNameChanged: " + series.name);
        onVisibleChanged:           console.log("stackedBarSeries.onVisibleChanged: " + series.visible);
        onOpacityChanged:           console.log("stackedBarSeries.onOpacityChanged: " + opacity);
        onClicked:                  console.log("stackedBarSeries.onClicked: " + barset + " " + index);
        onHovered:                  console.log("stackedBarSeries.onHovered: " + barset
                                                + " " + status + " " + index);
        onLabelsVisibleChanged:     console.log("stackedBarSeries.onLabelsVisibleChanged: " + series.labelsVisible);
        onCountChanged:             console.log("stackedBarSeries.onCountChanged: " + count);
        onLabelsFormatChanged:      console.log("stackedBarSeries.onLabelsFormatChanged: "
                                                + format);
        onLabelsPositionChanged:    console.log("stackedBarSeries.onLabelsPositionChanged: "
                                                + series.labelsPosition);
        onLabelsPrecisionChanged:   console.log(
                                        "stackedBarSeries.onLabelsPrecisionChanged: "
                                        + series.labelsPrecision);
        onPressed:       console.log("stackedBarSeries.onPressed: " + barset + " " + index);
        onReleased:      console.log("stackedBarSeries.onReleased: " + barset + " " + index);
        onDoubleClicked: console.log("stackedBarSeries.onDoubleClicked: " + barset + " " + index);

        function changeLabelsPosition() {
            if (labelsPosition === BarSeries.LabelsCenter)
                labelsPosition = BarSeries.LabelsInsideEnd;
            else
                labelsPosition = BarSeries.LabelsCenter;
        }
    }
}
