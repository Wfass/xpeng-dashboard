.class Lbwy$4;
.super Ljava/lang/Object;
.source "RecordEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lbwy;


# direct methods
.method constructor <init>(Lbwy;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lbwy$4;->d:Lbwy;

    iput-object p2, p0, Lbwy$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lbwy$4;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lbwy$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvo;)Ljava/lang/Boolean;
    .locals 3

    .line 80
    iget-object v0, p0, Lbwy$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lbwy$4;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lbwy$4;->c:Z

    invoke-interface {p1, v0, v1, v2}, Lbvo;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, Lbvo;

    invoke-virtual {p0, p1}, Lbwy$4;->a(Lbvo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
