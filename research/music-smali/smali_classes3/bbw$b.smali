.class Lbbw$b;
.super Ljava/lang/Object;
.source "IcmReceiverModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lbbw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lbbw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbw;-><init>(Lbbw$1;)V

    sput-object v0, Lbbw$b;->a:Lbbw;

    return-void
.end method
