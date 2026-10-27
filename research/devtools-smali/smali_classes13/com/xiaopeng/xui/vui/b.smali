.class public abstract Lcom/xiaopeng/xui/vui/b;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/d;


# instance fields
.field private abQ:Lcom/xiaopeng/vui/commons/c;

.field acA:Lcom/xiaopeng/vui/commons/a;

.field private acB:Z

.field private acx:Lcom/xiaopeng/vui/commons/b;

.field private acy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private acz:Landroid/view/View$OnAttachStateChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acx:Lcom/xiaopeng/vui/commons/b;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acy:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/xiaopeng/xui/vui/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/b$1;-><init>(Lcom/xiaopeng/xui/vui/b;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acz:Landroid/view/View$OnAttachStateChangeListener;

    .line 159
    new-instance v0, Lcom/xiaopeng/xui/vui/-$$Lambda$b$A9DB7XYbQl-6bQIWkZI5BnaV8EQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$b$A9DB7XYbQl-6bQIWkZI5BnaV8EQ;-><init>(Lcom/xiaopeng/xui/vui/b;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acA:Lcom/xiaopeng/vui/commons/a;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/b;->acB:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/b;->qZ()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    .line 162
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 163
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 164
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/c;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/c;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 169
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/xui/vui/b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/b;->ra()V

    return-void
.end method

.method public static synthetic lambda$A9DB7XYbQl-6bQIWkZI5BnaV8EQ(Lcom/xiaopeng/xui/vui/b;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/vui/b;->b(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 156
    const-string v0, "VuiViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSceneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hashcode "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private qZ()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/b;->mRootView:Landroid/view/View;

    .line 128
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 129
    const-string v3, "createVuiScene"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/vui/b;->log(Ljava/lang/String;)V

    .line 131
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/vui/b;->acB:Z

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/b;->acA:Lcom/xiaopeng/vui/commons/a;

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/xiaopeng/vui/commons/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/d;Lcom/xiaopeng/vui/commons/a;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/d;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v3

    .line 137
    invoke-interface {v0, v1, v2, p0}, Lcom/xiaopeng/vui/commons/c;->a(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/d;)V

    .line 139
    :goto_1
    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/c;->dW(Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void
.end method

.method private ra()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "destroyVuiScene"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/b;->log(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/c;->dX(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/b;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/c;->dY(Ljava/lang/String;)V

    .line 148
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/b;->abQ:Lcom/xiaopeng/vui/commons/c;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acx:Lcom/xiaopeng/vui/commons/b;

    if-eqz v0, :cond_1

    .line 151
    iput-object v1, p0, Lcom/xiaopeng/xui/vui/b;->acx:Lcom/xiaopeng/vui/commons/b;

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method protected m(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    const-string v0, "initVui"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/b;->log(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/a;->ql()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/b;->acz:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/b;->mRootView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/b;->acz:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56
    return-void
.end method
