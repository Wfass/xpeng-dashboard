.class Lbsr$a;
.super Ljava/lang/Object;
.source "KugouSongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lbsr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lbsr;

    invoke-direct {v0}, Lbsr;-><init>()V

    sput-object v0, Lbsr$a;->a:Lbsr;

    return-void
.end method
