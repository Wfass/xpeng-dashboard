.class Lcom/xiaopeng/xui/b/c$b;
.super Ljava/lang/Object;
.source "SoundEffectPool.java"

# interfaces
.implements Lcom/xiaopeng/xui/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic abk:Lcom/xiaopeng/xui/b/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/b/c;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/b/c$b;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/b/c;Lcom/xiaopeng/xui/b/c$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/c$b;-><init>(Lcom/xiaopeng/xui/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/b/d;)I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$b;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-static {v0}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/b/c$b;->abk:Lcom/xiaopeng/xui/b/c;

    invoke-static {p1}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;)Landroid/media/SoundPool;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$b;->abk:Lcom/xiaopeng/xui/b/c;

    iget-object v0, v0, Lcom/xiaopeng/xui/b/c;->abc:Lcom/xiaopeng/xui/b/d;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/b/d;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/b/c$b;->abk:Lcom/xiaopeng/xui/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderSystem--resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mSoundPool is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/b/c;->a(Lcom/xiaopeng/xui/b/c;Ljava/lang/String;)V

    .line 153
    const/4 p1, 0x0

    return p1
.end method
