.class Lbtd$a;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbtd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lbtd;

    invoke-direct {v0}, Lbtd;-><init>()V

    sput-object v0, Lbtd$a;->a:Lbtd;

    return-void
.end method
