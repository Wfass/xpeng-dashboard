.class Lbws$20;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbws;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lbws;


# direct methods
.method constructor <init>(Lbws;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lbws$20;->f:Lbws;

    iput-object p2, p0, Lbws$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lbws$20;->b:Ljava/lang/String;

    iput-object p4, p0, Lbws$20;->c:Ljava/lang/String;

    iput-object p5, p0, Lbws$20;->d:Ljava/lang/String;

    iput-object p6, p0, Lbws$20;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 362
    check-cast p1, Lbvk;

    invoke-virtual {p0, p1}, Lbws$20;->a(Lbvk;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvk;)Ljava/lang/String;
    .locals 6

    .line 365
    iget-object v1, p0, Lbws$20;->a:Ljava/lang/String;

    iget-object v2, p0, Lbws$20;->b:Ljava/lang/String;

    iget-object v3, p0, Lbws$20;->c:Ljava/lang/String;

    iget-object v4, p0, Lbws$20;->d:Ljava/lang/String;

    iget-object v5, p0, Lbws$20;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lbvk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
