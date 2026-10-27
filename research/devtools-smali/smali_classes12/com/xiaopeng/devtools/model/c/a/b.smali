.class public Lcom/xiaopeng/devtools/model/c/a/b;
.super Ljava/lang/Object;
.source "FactoryTestModel.java"


# instance fields
.field private sq:Lcom/xiaopeng/devtools/model/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/xiaopeng/devtools/model/b;->fk()Lcom/xiaopeng/devtools/model/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/b;->deleteAll()V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/devtools/model/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 23
    return-void
.end method

.method public bv(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/b;->bo(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/devtools/model/b;->c(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public fm()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/b;->sq:Lcom/xiaopeng/devtools/model/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/b;->fm()V

    .line 31
    return-void
.end method
