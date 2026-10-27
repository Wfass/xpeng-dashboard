.class Lbcc$a;
.super Ljava/lang/Object;
.source "IpcReceiveModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lbcc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbcc;-><init>(Lbcc$1;)V

    sput-object v0, Lbcc$a;->a:Lbcc;

    return-void
.end method
