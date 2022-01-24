import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# 使用pandas和numpy生成一组仿真数据
s = pd.DataFrame(np.random.randn(500), columns=['value'])
print(s.shape)  # (500, 1)

# 创建自定义图像
fig = plt.figure(figsize=(10, 6))
# 创建子图1
ax1 = fig.add_subplot(2, 1, 1)
# 绘制散点图
ax1.scatter(s.index, s.values)
plt.grid()  # 添加网格

# 创建子图2
ax2 = fig.add_subplot(2, 1, 2)
# 绘制直方图
s.hist(bins=30, alpha=0.5, ax=ax2)
# 绘制密度图
s.plot(kind='kde', secondary_y=True, ax=ax2)  # 使用双坐标轴
plt.grid()  # 添加网格

# 显示自定义图像
plt.show()
