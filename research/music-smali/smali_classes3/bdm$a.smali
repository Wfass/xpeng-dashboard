.class Lbdm$a;
.super Ljava/lang/Object;
.source "AuthModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lbdm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lbdm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdm;-><init>(Lbdm$1;)V

    sput-object v0, Lbdm$a;->a:Lbdm;

    return-void
.end method

.method static synthetic a()Lbdm;
    .locals 1

    .line 28
    sget-object v0, Lbdm$a;->a:Lbdm;

    return-object v0
.end method
