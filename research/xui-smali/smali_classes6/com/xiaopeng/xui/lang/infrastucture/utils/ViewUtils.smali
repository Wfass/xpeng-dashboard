.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewCustomId(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 44
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_2

    .line 45
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 46
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_2
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 51
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 53
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getViewText(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 15
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 17
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 19
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_1
    return-object v1
.end method

.method public static getViewTextColorInt(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 23
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 25
    .local v0, "color":I
    return v0

    .line 27
    .end local v0    # "color":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static setViewTextColorInt(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorInt"    # I

    .line 31
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewTextColor. colorInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    :cond_0
    return-void
.end method
