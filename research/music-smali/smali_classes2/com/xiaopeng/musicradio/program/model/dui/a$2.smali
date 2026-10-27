.class Lcom/xiaopeng/musicradio/program/model/dui/a$2;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/model/dui/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$2;->a:Lcom/xiaopeng/musicradio/program/model/dui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->d()Ljava/util/List;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/program/model/dui/a$2$1;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a$2;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
