.class Lbee$a;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lbee;

    invoke-direct {v0}, Lbee;-><init>()V

    sput-object v0, Lbee$a;->a:Lbee;

    return-void
.end method
