.class Lbve$1;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbve;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvc;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbve;


# direct methods
.method constructor <init>(Lbve;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lbve$1;->c:Lbve;

    iput-object p2, p0, Lbve$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbve$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvc;)Ljava/lang/Object;
    .locals 2

    .line 249
    iget-object p1, p0, Lbve$1;->c:Lbve;

    iget-object v0, p0, Lbve$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lbve$1;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbve;->a(Lbve;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, Lbvc;

    invoke-virtual {p0, p1}, Lbve$1;->a(Lbvc;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
