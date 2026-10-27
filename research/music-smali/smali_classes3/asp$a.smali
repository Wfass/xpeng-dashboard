.class Lasp$a;
.super Ljava/lang/Object;
.source "XpModelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lasp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lasp;

    invoke-direct {v0}, Lasp;-><init>()V

    sput-object v0, Lasp$a;->a:Lasp;

    return-void
.end method

.method static synthetic a()Lasp;
    .locals 1

    .line 28
    sget-object v0, Lasp$a;->a:Lasp;

    return-object v0
.end method
