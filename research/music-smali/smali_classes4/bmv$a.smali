.class Lbmv$a;
.super Ljava/lang/Object;
.source "XpFMModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lbmv;

    invoke-direct {v0}, Lbmv;-><init>()V

    sput-object v0, Lbmv$a;->a:Lbmv;

    return-void
.end method

.method static synthetic a()Lbmv;
    .locals 1

    .line 55
    sget-object v0, Lbmv$a;->a:Lbmv;

    return-object v0
.end method
