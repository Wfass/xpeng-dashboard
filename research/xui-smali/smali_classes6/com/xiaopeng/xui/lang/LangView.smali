.class public Lcom/xiaopeng/xui/lang/LangView;
.super Ljava/lang/Object;
.source "LangView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

.field private mModifiedView:Landroid/view/View;

.field private mModifiedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModifyingView:Landroid/view/View;

.field private mModifyingViewTextColor:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V
    .locals 1
    .param p1, "presenter"    # Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedViews:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangView;->mLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/lang/LangView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangView;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingViewTextColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/lang/LangView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangView;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xui/lang/LangView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangView;
    .param p1, "x1"    # Landroid/view/View;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/lang/LangView;)Lcom/xiaopeng/xui/lang/LangPresenterImpl;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangView;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    return-object v0
.end method


# virtual methods
.method public addLongClickAction(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ReflectionUtils;->getLongClickListener(Landroid/view/View;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/lang/LangView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangView$1;-><init>(Lcom/xiaopeng/xui/lang/LangView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    return-void
.end method

.method public clearModifiedViews()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public onCancelModify()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v1, "onCancelModify."

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    iget v1, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingViewTextColor:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->setViewTextColorInt(Landroid/view/View;I)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    .line 83
    return-void
.end method

.method public onLangModified(Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;)V
    .locals 8
    .param p1, "bean"    # Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    .line 57
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v2, "onLangModified. Error type or no target view"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->getAllTargetStr()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "newStr":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v4, "onLangModified. No string"

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, "textView":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->getViewCustomId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "newCustomId":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedViews:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v5, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    iput-object v5, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedView:Landroid/view/View;

    .line 74
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    .line 75
    iget-object v5, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLangModified. newStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " newCustomId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
