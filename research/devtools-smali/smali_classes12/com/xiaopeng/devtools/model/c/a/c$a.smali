.class Lcom/xiaopeng/devtools/model/c/a/c$a;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mWhat:I

.field private mWidth:I

.field final synthetic su:Lcom/xiaopeng/devtools/model/c/a/c;

.field private sv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/c/a/c;IILandroid/os/Handler;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p2, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    .line 257
    iput p3, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    .line 258
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->sv:Ljava/lang/ref/WeakReference;

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/model/c/a/c;IILjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p2, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    .line 263
    iput p3, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    .line 264
    iput-object p4, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mData:Ljava/lang/String;

    .line 265
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->sv:Ljava/lang/ref/WeakReference;

    .line 266
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 286
    iget v1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 287
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 270
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c;->fQ()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/devtools/utils/n;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 273
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 274
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget v2, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/devtools/utils/n;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 277
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWhat:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mData:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/devtools/model/c/a/c$a;->mWidth:I

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/devtools/utils/n;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 281
    :cond_2
    :goto_0
    return-void
.end method
