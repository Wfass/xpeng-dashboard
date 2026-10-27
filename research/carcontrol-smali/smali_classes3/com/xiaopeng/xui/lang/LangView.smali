.class public Lcom/xiaopeng/xui/lang/LangView;
.super Ljava/lang/Object;
.source "LangView.java"


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

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/lang/LangView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingViewTextColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/lang/LangView;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xui/lang/LangView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/lang/LangView;)Lcom/xiaopeng/xui/lang/LangPresenterImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/xui/lang/LangView;->mLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    return-object p0
.end method


# virtual methods
.method public addLongClickAction(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ReflectionUtils;->getLongClickListener(Landroid/view/View;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/lang/LangView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangView$1;-><init>(Lcom/xiaopeng/xui/lang/LangView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public clearModifiedViews()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

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

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    return-void
.end method

.method public onLangModified(Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    .line 57
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v0, "onLangModified. Error type or no target view"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->getAllTargetStr()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v0, "onLangModified. No string"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-static {v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->getViewCustomId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedViews:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifiedView:Landroid/view/View;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->mModifyingView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLangModified. newStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " newCustomId:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
