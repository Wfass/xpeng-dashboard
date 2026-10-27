.class Lbwy$3;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwy;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbwy;


# direct methods
.method constructor <init>(Lbwy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lbwy$3;->c:Lbwy;

    iput-object p2, p0, Lbwy$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbwy$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Lbvo;

    invoke-virtual {p0, p1}, Lbwy$3;->a(Lbvo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbvo;)Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lbwy$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lbwy$3;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbvo;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
