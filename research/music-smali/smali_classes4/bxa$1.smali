.class Lbxa$1;
.super Ljava/lang/Object;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxa;->a(I)V
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
.field final synthetic a:I

.field final synthetic b:Lbxa;


# direct methods
.method constructor <init>(Lbxa;I)V
    .locals 0

    .line 34
    iput-object p1, p0, Lbxa$1;->b:Lbxa;

    iput p2, p0, Lbxa$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbuo;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget v0, p0, Lbxa$1;->a:I

    invoke-interface {p1, v0}, Lbuo;->a(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lbuo;

    invoke-virtual {p0, p1}, Lbxa$1;->a(Lbuo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
