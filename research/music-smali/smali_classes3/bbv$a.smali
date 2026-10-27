.class Lbbv$a;
.super Ljava/lang/Object;
.source "IcmControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lbbv;

    invoke-direct {v0}, Lbbv;-><init>()V

    sput-object v0, Lbbv$a;->a:Lbbv;

    return-void
.end method
