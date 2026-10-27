.class Lbws$30;
.super Ljava/lang/Object;
.source "AgentProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbws;->a(Ljava/lang/String;[Ljava/lang/String;Z)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lbws;


# direct methods
.method constructor <init>(Lbws;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 114
    iput-object p1, p0, Lbws$30;->d:Lbws;

    iput-object p2, p0, Lbws$30;->a:Ljava/lang/String;

    iput-object p3, p0, Lbws$30;->b:[Ljava/lang/String;

    iput-boolean p4, p0, Lbws$30;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvk;)Ljava/lang/Object;
    .locals 3

    .line 117
    iget-object v0, p0, Lbws$30;->a:Ljava/lang/String;

    iget-object v1, p0, Lbws$30;->b:[Ljava/lang/String;

    iget-boolean v2, p0, Lbws$30;->c:Z

    invoke-interface {p1, v0, v1, v2}, Lbvk;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, Lbvk;

    invoke-virtual {p0, p1}, Lbws$30;->a(Lbvk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
