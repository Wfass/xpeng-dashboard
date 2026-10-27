.class Lbvv$a;
.super Ljava/lang/Object;
.source "OverallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbvv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Lbvv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbvv;-><init>(Lbvv$1;)V

    sput-object v0, Lbvv$a;->a:Lbvv;

    return-void
.end method

.method static synthetic a()Lbvv;
    .locals 1

    .line 168
    sget-object v0, Lbvv$a;->a:Lbvv;

    return-object v0
.end method
