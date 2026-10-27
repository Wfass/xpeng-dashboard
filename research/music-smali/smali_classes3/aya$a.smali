.class Laya$a;
.super Ljava/lang/Object;
.source "MineHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laya;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Laya$a;->a:Laya;

    return-void
.end method
