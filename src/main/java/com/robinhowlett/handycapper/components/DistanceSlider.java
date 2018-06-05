package com.robinhowlett.handycapper.components;

import org.controlsfx.control.RangeSlider;

import java.util.Map.Entry;
import java.util.TreeMap;

import javafx.geometry.Insets;
import javafx.scene.layout.AnchorPane;
import javafx.util.StringConverter;

public class DistanceSlider extends RangeSlider {

    public static final int LOW_VALUE = 2;
    public static final int HIGH_VALUE = 12;

    private static final TreeMap<Double, String> FURLONGS_TO_COMPACT;

    static {
        TreeMap<Double, String> furlongsToCompact = new TreeMap<>();
        furlongsToCompact.put(2d, "<=2f");
        furlongsToCompact.put(2.32, "510y");
        furlongsToCompact.put(2.5, "550y");
        furlongsToCompact.put(2.5, "2 1/2f");
        furlongsToCompact.put(2.59, "570y");
        furlongsToCompact.put(2.59, "570y");
        furlongsToCompact.put(2.64, "580y");
        furlongsToCompact.put(2.73, "600y");
        furlongsToCompact.put(2.77, "610y");
        furlongsToCompact.put(2.82, "620y");
        furlongsToCompact.put(2.86, "630y");
        furlongsToCompact.put(2.86, "630y");
        furlongsToCompact.put(2.91, "640y");
        furlongsToCompact.put(3d, "660y");
        furlongsToCompact.put(3.27, "720y");
        furlongsToCompact.put(3.32, "730y");
        furlongsToCompact.put(3.45, "760y");
        furlongsToCompact.put(3.5, "770y");
        furlongsToCompact.put(3.5, "3 1/2f");
        furlongsToCompact.put(3.82, "840y");
        furlongsToCompact.put(3.86, "850y");
        furlongsToCompact.put(3.91, "860y");
        furlongsToCompact.put(3.95, "870y");
        furlongsToCompact.put(4d, "4f");
        furlongsToCompact.put(4.32, "950y");
        furlongsToCompact.put(4.32, "4f 70y");
        furlongsToCompact.put(4.5, "4 1/2f");
        furlongsToCompact.put(4.5, "990y");
        furlongsToCompact.put(4.55, "1000y");
        furlongsToCompact.put(5d, "5f");
        furlongsToCompact.put(5.25, "5 1/4f");
        furlongsToCompact.put(5.5, "5 1/2f");
        furlongsToCompact.put(6d, "6f");
        furlongsToCompact.put(6.5, "6 1/2f");
        furlongsToCompact.put(7d, "7f");
        furlongsToCompact.put(7.5, "7 1/2f");
        furlongsToCompact.put(8d, "1m");
        furlongsToCompact.put(8.18, "1m 40y");
        furlongsToCompact.put(8.32, "1m 70y");
        furlongsToCompact.put(8.5, "1 1/16m");
        furlongsToCompact.put(9d, "1 1/8m");
        furlongsToCompact.put(9.5, "1 3/16m");
        furlongsToCompact.put(10d, "1 1/4m");
        furlongsToCompact.put(10.5, "1 5/16m");
        furlongsToCompact.put(11d, "1 3/8m");
        furlongsToCompact.put(11.5, "1 7/16m");
        furlongsToCompact.put(12d, "1 1/2m+");
        FURLONGS_TO_COMPACT = new TreeMap<>(furlongsToCompact);
    }

    public DistanceSlider() {
        super(LOW_VALUE, HIGH_VALUE, LOW_VALUE, HIGH_VALUE);

        setShowTickMarks(true);
        setShowTickLabels(true);
        setMajorTickUnit(2);
        setMinorTickCount(4);
        setSnapToTicks(true);

        StringConverter<Number> stringConverter = new StringConverter<Number>() {
            @Override
            public String toString(Number object) {
                if (object instanceof Double) {
                    Entry<Double, String> entry =
                            FURLONGS_TO_COMPACT.floorEntry(object.doubleValue());
                    if (entry != null) {
                        return entry.getValue();
                    }
                }
                return "N/A";
            }

            @Override
            public Double fromString(String string) {
                return null;
            }
        };

        setLabelFormatter(stringConverter);
        setPadding(new Insets(5, 5, 0, 5));

        AnchorPane.setTopAnchor(this, 0d);
        AnchorPane.setBottomAnchor(this, 0d);
        AnchorPane.setRightAnchor(this, 0d);
        AnchorPane.setLeftAnchor(this, 0d);
    }
}
