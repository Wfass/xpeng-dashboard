.class Lblf$a;
.super Ljava/lang/Object;
.source "PlayerThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lblf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lblf;

    invoke-direct {v0}, Lblf;-><init>()V

    sput-object v0, Lblf$a;->a:Lblf;

    return-void
.end method
