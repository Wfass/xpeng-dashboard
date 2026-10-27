.class final Landroid/support/rastermill/bitmappool/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

.field private size:I


# direct methods
.method constructor <init>(Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;)V
    .locals 0
    .param p1, "pool"    # Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/bitmappool/SizeStrategy$Key;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    .line 121
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    instance-of v0, p1, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    .line 137
    .local v0, "other":Landroid/support/rastermill/bitmappool/SizeStrategy$Key;
    iget v2, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    iget v3, v0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 139
    .end local v0    # "other":Landroid/support/rastermill/bitmappool/SizeStrategy$Key;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    return v0
.end method

.method public init(I)V
    .locals 0
    .param p1, "size"    # I

    .line 130
    iput p1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    .line 131
    return-void
.end method

.method public offer()V
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->offer(Landroid/support/rastermill/bitmappool/Poolable;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->size:I

    invoke-static {v0}, Landroid/support/rastermill/bitmappool/SizeStrategy;->access$100(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
