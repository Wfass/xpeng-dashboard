.class Lbxa$2;
.super Ljava/lang/Object;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxa;->a(Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbuo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:I

.field final synthetic c:Lbxa;


# direct methods
.method constructor <init>(Lbxa;Landroid/os/IBinder;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lbxa$2;->c:Lbxa;

    iput-object p2, p0, Lbxa$2;->a:Landroid/os/IBinder;

    iput p3, p0, Lbxa$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbuo;)Ljava/lang/Object;
    .locals 2

    .line 49
    iget-object v0, p0, Lbxa$2;->a:Landroid/os/IBinder;

    iget v1, p0, Lbxa$2;->b:I

    invoke-interface {p1, v0, v1}, Lbuo;->a(Landroid/os/IBinder;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lbuo;

    invoke-virtual {p0, p1}, Lbxa$2;->a(Lbuo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
