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
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;)V

    return-void
.end method

.method public static addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    return-void
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Z)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    .line 99
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateLayoutLoadableVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    .line 110
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateLayoutLoadableVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    .line 123
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generatePriorityVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generatePriorityVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3

    .line 172
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v0, p2, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 183
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    const-string v0, ""

    .line 195
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 220
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateVideoVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 7

    .line 147
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    sget v6, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->LIST_VEDIO_TYPE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;I)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
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

    move-result-object p0

    return-object p0
.end method

.method public static setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    return-void
.end method
