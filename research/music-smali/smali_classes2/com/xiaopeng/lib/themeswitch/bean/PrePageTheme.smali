.class public Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;
.super Ljava/lang/Object;
.source "PrePageTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;
    }
.end annotation


# instance fields
.field private rootView:Landroid/view/View;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public getViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->viewList:Ljava/util/List;

    return-object v0
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->rootView:Landroid/view/View;

    return-void
.end method

.method public setViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->viewList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<RootView="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->viewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;

    const-string v4, "  <View id="

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;

    const-string v5, "    <"

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->getAttrName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->getAttrValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/>\n"

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  </View>\n"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "</Page>"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
