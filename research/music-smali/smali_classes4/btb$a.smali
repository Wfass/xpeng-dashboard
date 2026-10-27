.class Lbtb$a;
.super Ljava/lang/Object;
.source "VipDataModelV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbtb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lbtb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbtb;-><init>(Lbtb$1;)V

    sput-object v0, Lbtb$a;->a:Lbtb;

    return-void
.end method
