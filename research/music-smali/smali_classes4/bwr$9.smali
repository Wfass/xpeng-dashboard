.class Lbwr$9;
.super Ljava/lang/Object;
.source "ASREngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwr;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvj;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbwr;


# direct methods
.method constructor <init>(Lbwr;J)V
    .locals 0

    .line 127
    iput-object p1, p0, Lbwr$9;->b:Lbwr;

    iput-wide p2, p0, Lbwr$9;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvj;)Ljava/lang/Object;
    .locals 2

    .line 130
    iget-wide v0, p0, Lbwr$9;->a:J

    invoke-interface {p1, v0, v1}, Lbvj;->b(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Lbvj;

    invoke-virtual {p0, p1}, Lbwr$9;->a(Lbvj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
