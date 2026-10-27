.class Lazw$a;
.super Ljava/lang/Object;
.source "LocalLoveOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lazw;

    invoke-direct {v0}, Lazw;-><init>()V

    sput-object v0, Lazw$a;->a:Lazw;

    return-void
.end method
