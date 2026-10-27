.class Lbeb$a;
.super Ljava/lang/Object;
.source "UserAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lbeb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lbeb;

    invoke-direct {v0}, Lbeb;-><init>()V

    sput-object v0, Lbeb$a;->a:Lbeb;

    return-void
.end method

.method static synthetic a()Lbeb;
    .locals 1

    .line 27
    sget-object v0, Lbeb$a;->a:Lbeb;

    return-object v0
.end method
