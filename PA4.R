# COP2073C PA4
# Stephanie Johnson
# 09/27/2026
# Figure 7.6

# Data provided in the textbook
x <- 1:20
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -8.23,
       -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78, -11.67, 1.17, 15.62)

# Step 1 create the empty plotting region 
plot(x, y, type = "n", main = "")

# Step 2 add  the horizontal red dash lines at y = -5 and y = 5
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)

# Step 3 add vertical red dot lines to form the box
segments(x0 = c(5, 15),
         y0 = c(-5, -5),
         x1 = c(5, 15),
         y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2)

# Step 4 add the points where y >= 5
points(x[y >= 5], y[y >= 5],
       pch = 4, col = "darkmagenta", cex = 2)

# Step 5 add the points where y <= -5
points(x[y <= -5], y[y <= -5],
       pch = 3, col = "darkgreen", cex = 2)

# Step 6 add the blue points
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       pch = 19, col = "blue")

# Step 7 add the remaining points as default black circles
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)])

# Step 8 connect all coordinates with a dash dot dash line
lines(x, y, lty = 4)

# Step 9 add the arrow pointing toward the sweet spot
arrows(x0 = 8, y0 = 14,
       x1 = 11, y1 = 2.5)

# Step 10 add the sweet spot label
text(x = 8, y = 15, labels = "sweet spot")

# Additional line add the legend
legend("topright",
       legend = c("y >= 5", "y <= -5", "sweet spot", "other"),
       pch = c(4, 3, 19, 1),
       col = c("darkmagenta", "darkgreen", "blue", "black"))
