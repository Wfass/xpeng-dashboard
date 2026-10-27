.class Lbws$17;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbws;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvk;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbws;


# direct methods
.method constructor <init>(Lbws;ILjava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lbws$17;->c:Lbws;

    iput p2, p0, Lbws$17;->a:I

    iput-object p3, p0, Lbws$17;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvk;)Ljava/lang/Object;
    .locals 2

    .line 331
    iget v0, p0, Lbws$17;->a:I

    iget-object v1, p0, Lbws$17;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbvk;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 328
    check-cast p1, Lbvk;

    invoke-virtual {p0, p1}, Lbws$17;->a(Lbvk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
