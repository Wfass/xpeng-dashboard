.class Lbwy$1;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwy;->a(Ljava/lang/String;II)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lbwy;


# direct methods
.method constructor <init>(Lbwy;Ljava/lang/String;II)V
    .locals 0

    .line 44
    iput-object p1, p0, Lbwy$1;->d:Lbwy;

    iput-object p2, p0, Lbwy$1;->a:Ljava/lang/String;

    iput p3, p0, Lbwy$1;->b:I

    iput p4, p0, Lbwy$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvo;)Ljava/lang/Object;
    .locals 3

    .line 47
    iget-object v0, p0, Lbwy$1;->a:Ljava/lang/String;

    iget v1, p0, Lbwy$1;->b:I

    iget v2, p0, Lbwy$1;->c:I

    invoke-interface {p1, v0, v1, v2}, Lbvo;->a(Ljava/lang/String;II)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lbvo;

    invoke-virtual {p0, p1}, Lbwy$1;->a(Lbvo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
