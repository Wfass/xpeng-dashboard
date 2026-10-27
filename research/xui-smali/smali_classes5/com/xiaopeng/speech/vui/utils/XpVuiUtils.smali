.class public Lcom/xiaopeng/speech/vui/utils/XpVuiUtils;
.super Ljava/lang/Object;
.source "XpVuiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;)V
    .locals 0
    .param p0, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public static addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 0
    .param p0, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p1, "view"    # Landroid/view/View;

    .line 32
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "id"    # I
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "id"    # I
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Z)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "isLayoutLoadable"    # Z

    .line 99
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateLayoutLoadableVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;

    .line 110
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateLayoutLoadableVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 123
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generatePriorityVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 135
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generatePriorityVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 161
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "id"    # I

    .line 172
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 195
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .line 220
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateVideoVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 147
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    sget v6, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->LIST_VEDIO_TYPE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;I)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 231
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 23
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 24
    return-void
.end method
