.class Lbpv$a;
.super Ljava/lang/Object;
.source "AppStartUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbpv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lbpv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpv;-><init>(Lbpv$1;)V

    sput-object v0, Lbpv$a;->a:Lbpv;

    return-void
.end method

.method static synthetic a()Lbpv;
    .locals 1

    .line 26
    sget-object v0, Lbpv$a;->a:Lbpv;

    return-object v0
.end method
