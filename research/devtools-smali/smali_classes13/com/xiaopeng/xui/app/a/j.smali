.class public Lcom/xiaopeng/xui/app/a/j;
.super Ljava/lang/Object;
.source "XActivityWindowAttributes.java"


# instance fields
.field private flags:I

.field private gravity:I

.field private height:I

.field private final mActivity:Landroid/app/Activity;

.field private systemUiVisibility:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/j;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->x:I

    .line 33
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->y:I

    .line 34
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->flags:I

    .line 35
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->width:I

    .line 36
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->height:I

    .line 37
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Lcom/xiaopeng/xui/app/a/j;->gravity:I

    .line 38
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v0, p0, Lcom/xiaopeng/xui/app/a/j;->systemUiVisibility:I

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 48
    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 49
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Lcom/xiaopeng/xui/app/a/j;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p0, Lcom/xiaopeng/xui/app/a/j;->systemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    :cond_0
    return-void
.end method

.method public en(I)Lcom/xiaopeng/xui/app/a/j;
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/xui/app/a/j;->x:I

    .line 61
    return-object p0
.end method

.method public eo(I)Lcom/xiaopeng/xui/app/a/j;
    .locals 0

    .line 65
    iput p1, p0, Lcom/xiaopeng/xui/app/a/j;->y:I

    .line 66
    return-object p0
.end method

.method public ep(I)Lcom/xiaopeng/xui/app/a/j;
    .locals 0

    .line 75
    iput p1, p0, Lcom/xiaopeng/xui/app/a/j;->width:I

    .line 76
    return-object p0
.end method

.method public eq(I)Lcom/xiaopeng/xui/app/a/j;
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/app/a/j;->height:I

    .line 81
    return-object p0
.end method

.method public er(I)Lcom/xiaopeng/xui/app/a/j;
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/xui/app/a/j;->gravity:I

    .line 86
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->gravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemUiVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/j;->systemUiVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/j;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
