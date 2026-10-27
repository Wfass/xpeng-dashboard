.class Lbew$a;
.super Ljava/lang/Object;
.source "XpNetRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lbew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lbew;

    invoke-direct {v0}, Lbew;-><init>()V

    sput-object v0, Lbew$a;->a:Lbew;

    return-void
.end method

.method static synthetic a()Lbew;
    .locals 1

    .line 37
    sget-object v0, Lbew$a;->a:Lbew;

    return-object v0
.end method
