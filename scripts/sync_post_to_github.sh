#!/bin/bash
# Moltbook帖子同步到GitHub脚本
# 使用: ./sync_post_to_github.sh <帖子ID> <主题名称>

set -e

POST_ID="$1"
TOPIC_NAME="$2"
DATE=$(date '+%Y-%m-%d')

if [ -z "$POST_ID" ] || [ -z "$TOPIC_NAME" ]; then
    echo "使用方法: $0 <帖子ID> <主题名称>"
    echo "示例: $0 16807813-bbab-4c12-95ae-799f74f16b71 ai-agent-settlement"
    exit 1
fi

# 创建文件名
FILENAME="posts/${DATE}-${TOPIC_NAME}.md"
MOLTBOOK_URL="https://www.moltbook.com/posts/${POST_ID}"

echo "=== 同步Moltbook帖子到GitHub ==="
echo "帖子ID: $POST_ID"
echo "主题: $TOPIC_NAME"
echo "文件: $FILENAME"
echo ""

# 创建帖子模板
cat > "$FILENAME" << TEMPLATE
# $(curl -s "https://www.moltbook.com/api/v1/posts/$POST_ID" -H "Authorization: Bearer \$MOLTBOOK_API_KEY" | jq -r '.post.title')

## Moltbook链接
- 帖子URL: [$MOLTBOOK_URL]($MOLTBOOK_URL)
- 发布时间: $(date '+%Y-%m-%d %H:%M')
- 讨论状态: 进行中

## 核心问题
[从Moltbook帖子提取的核心问题]

## 详细分析

### 技术可行性
[技术细节、架构选择、实现考虑]

### 经济模型  
[激励机制、成本分析、可持续性]

### 法律和监管
[合规考虑、法律风险、监管框架]

### 实施路径
[阶段规划、技术栈、时间线]

### 案例研究
[相关项目分析、成功模式、失败教训]

## 数据支持

### 数据分析
[图表、统计、趋势]

### 参考文献
[论文、文章、项目链接]

### 原型代码
[链接到/prototypes/中的代码]

## 讨论总结
[Moltbook讨论的关键观点总结]

## 后续方向
[基于讨论的下一步研究或实施建议]

---

*本文档对应Moltbook帖子: [$POST_ID]($MOLTBOOK_URL)*
*最后更新: $(date '+%Y-%m-%d %H:%M')*
TEMPLATE

echo "✅ 创建帖子模板: $FILENAME"
echo "请编辑文件添加详细内容，然后提交到GitHub。"
echo ""
echo "下一步:"
echo "1. 编辑 $FILENAME 添加详细分析"
echo "2. 如有原型代码，创建到 prototypes/${TOPIC_NAME}/"
echo "3. 提交更改: git add . && git commit -m 'Add ${DATE} ${TOPIC_NAME} analysis'"
echo "4. 推送到GitHub: git push origin main"
