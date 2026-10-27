.class public Lcom/xiaopeng/devtools/model/c/a/h;
.super Ljava/lang/Object;
.source "ShowReportModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/a/h$a;
    }
.end annotation


# instance fields
.field private sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/h;->sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;

    .line 26
    return-void
.end method


# virtual methods
.method public fV()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/h$a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/h;->sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/h$a;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/h$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
