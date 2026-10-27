.class Lbtc$a;
.super Ljava/lang/Object;
.source "VipHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbtc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lbtc;

    invoke-direct {v0}, Lbtc;-><init>()V

    sput-object v0, Lbtc$a;->a:Lbtc;

    return-void
.end method
