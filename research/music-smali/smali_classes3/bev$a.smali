.class Lbev$a;
.super Ljava/lang/Object;
.source "XpMusciModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lbev;

    invoke-direct {v0}, Lbev;-><init>()V

    sput-object v0, Lbev$a;->a:Lbev;

    return-void
.end method

.method static synthetic a()Lbev;
    .locals 1

    .line 97
    sget-object v0, Lbev$a;->a:Lbev;

    return-object v0
.end method
