.class Lcom/xiaopeng/musicradio/web/c$a;
.super Ljava/lang/Object;
.source "WebServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/web/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/web/c;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/c$a;->a:Lcom/xiaopeng/musicradio/web/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/web/c;Lcom/xiaopeng/musicradio/web/c$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/c$a;-><init>(Lcom/xiaopeng/musicradio/web/c;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/c$a;->a:Lcom/xiaopeng/musicradio/web/c;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/c;->a(Lcom/xiaopeng/musicradio/web/c;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/c$a;->a:Lcom/xiaopeng/musicradio/web/c;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/c;->b(Lcom/xiaopeng/musicradio/web/c;)V

    :cond_0
    return-void
.end method
