.class Lbst$a;
.super Ljava/lang/Object;
.source "NeteaseSongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lbst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lbst;

    invoke-direct {v0}, Lbst;-><init>()V

    sput-object v0, Lbst$a;->a:Lbst;

    return-void
.end method
