.class Lcom/xiaopeng/musicradio/program/model/dui/a$1;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a;->b()V
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

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$1;->a:Lcom/xiaopeng/musicradio/program/model/dui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->d()Ljava/util/List;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/program/model/dui/a$1$1;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a$1;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
