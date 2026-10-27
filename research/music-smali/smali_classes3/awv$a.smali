.class Lawv$a;
.super Ljava/lang/Object;
.source "MinePageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lawv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lawv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawv;-><init>(Lawv$1;)V

    sput-object v0, Lawv$a;->a:Lawv;

    return-void
.end method
