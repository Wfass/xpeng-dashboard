.class Larb$a;
.super Ljava/lang/Object;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Larb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Larb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Larb;-><init>(Larb$1;)V

    sput-object v0, Larb$a;->a:Larb;

    return-void
.end method

.method static synthetic a()Larb;
    .locals 1

    .line 29
    sget-object v0, Larb$a;->a:Larb;

    return-object v0
.end method
