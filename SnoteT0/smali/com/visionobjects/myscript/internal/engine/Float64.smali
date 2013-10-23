.class public final Lcom/visionobjects/myscript/internal/engine/Float64;
.super Lcom/visionobjects/myscript/internal/engine/NativeType;

# interfaces
.implements Lcom/visionobjects/myscript/internal/engine/IFloat64;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/visionobjects/myscript/internal/engine/NativeType;-><init>(I)V

    return-void
.end method

.method public static final newArray(I)[Lcom/visionobjects/myscript/internal/engine/Float64;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v2, p0, [Lcom/visionobjects/myscript/internal/engine/Float64;

    new-instance v3, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;

    mul-int/lit8 v1, p0, 0x8

    invoke-direct {v3, v1}, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;-><init>(I)V

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_1

    new-instance v4, Lcom/visionobjects/myscript/internal/engine/Float64;

    invoke-direct {v4}, Lcom/visionobjects/myscript/internal/engine/Float64;-><init>()V

    invoke-virtual {v4, v1}, Lcom/visionobjects/myscript/internal/engine/Float64;->setOffset(I)V

    invoke-virtual {v4, v3}, Lcom/visionobjects/myscript/internal/engine/Float64;->setBufferProvider(Lcom/visionobjects/myscript/internal/engine/IBufferProvider;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static final newArray([D)[Lcom/visionobjects/myscript/internal/engine/Float64;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid values: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid values: empty array is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, p0

    new-array v2, v1, [Lcom/visionobjects/myscript/internal/engine/Float64;

    new-instance v3, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v3, v1}, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;-><init>(I)V

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    new-instance v4, Lcom/visionobjects/myscript/internal/engine/Float64;

    invoke-direct {v4}, Lcom/visionobjects/myscript/internal/engine/Float64;-><init>()V

    invoke-virtual {v4, v1}, Lcom/visionobjects/myscript/internal/engine/Float64;->setOffset(I)V

    invoke-virtual {v4, v3}, Lcom/visionobjects/myscript/internal/engine/Float64;->setBufferProvider(Lcom/visionobjects/myscript/internal/engine/IBufferProvider;)V

    aget-wide v5, p0, v0

    invoke-virtual {v4, v5, v6}, Lcom/visionobjects/myscript/internal/engine/Float64;->set(D)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static final newArray([DII)[Lcom/visionobjects/myscript/internal/engine/Float64;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid values: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid values: empty array is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset: must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v1, p0

    if-lt p1, v1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid offset: must be < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gtz p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v1, p0

    if-le p2, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int v1, p1, p2

    array-length v2, p0

    if-lt v1, v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid offset / length pair: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v4, p2, [Lcom/visionobjects/myscript/internal/engine/Float64;

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v5, v1}, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;-><init>(I)V

    move v1, v0

    move v3, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_7

    new-instance v6, Lcom/visionobjects/myscript/internal/engine/Float64;

    invoke-direct {v6}, Lcom/visionobjects/myscript/internal/engine/Float64;-><init>()V

    invoke-virtual {v6, v3}, Lcom/visionobjects/myscript/internal/engine/Float64;->setOffset(I)V

    invoke-virtual {v6, v5}, Lcom/visionobjects/myscript/internal/engine/Float64;->setBufferProvider(Lcom/visionobjects/myscript/internal/engine/IBufferProvider;)V

    aget-wide v7, p0, v0

    invoke-virtual {v6, v7, v8}, Lcom/visionobjects/myscript/internal/engine/Float64;->set(D)V

    add-int/lit8 v2, v1, 0x1

    aput-object v6, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v3, 0x8

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_7
    return-object v4
.end method

.method public static final newArray([F)[Lcom/visionobjects/myscript/internal/engine/Float64;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid values: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid values: empty array is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, p0

    new-array v2, v1, [Lcom/visionobjects/myscript/internal/engine/Float64;

    new-instance v3, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v3, v1}, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;-><init>(I)V

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    new-instance v4, Lcom/visionobjects/myscript/internal/engine/Float64;

    invoke-direct {v4}, Lcom/visionobjects/myscript/internal/engine/Float64;-><init>()V

    invoke-virtual {v4, v1}, Lcom/visionobjects/myscript/internal/engine/Float64;->setOffset(I)V

    invoke-virtual {v4, v3}, Lcom/visionobjects/myscript/internal/engine/Float64;->setBufferProvider(Lcom/visionobjects/myscript/internal/engine/IBufferProvider;)V

    aget v5, p0, v0

    invoke-virtual {v4, v5}, Lcom/visionobjects/myscript/internal/engine/Float64;->set(F)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static final newArray([FII)[Lcom/visionobjects/myscript/internal/engine/Float64;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid values: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid values: empty array is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset: must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v1, p0

    if-lt p1, v1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid offset: must be < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gtz p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v1, p0

    if-le p2, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int v1, p1, p2

    array-length v2, p0

    if-lt v1, v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid offset / length pair: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v4, p2, [Lcom/visionobjects/myscript/internal/engine/Float64;

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v5, v1}, Lcom/visionobjects/myscript/internal/engine/NativeType$BufferProvider;-><init>(I)V

    move v1, v0

    move v3, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_7

    new-instance v6, Lcom/visionobjects/myscript/internal/engine/Float64;

    invoke-direct {v6}, Lcom/visionobjects/myscript/internal/engine/Float64;-><init>()V

    invoke-virtual {v6, v3}, Lcom/visionobjects/myscript/internal/engine/Float64;->setOffset(I)V

    invoke-virtual {v6, v5}, Lcom/visionobjects/myscript/internal/engine/Float64;->setBufferProvider(Lcom/visionobjects/myscript/internal/engine/IBufferProvider;)V

    aget v2, p0, v0

    invoke-virtual {v6, v2}, Lcom/visionobjects/myscript/internal/engine/Float64;->set(F)V

    add-int/lit8 v2, v1, 0x1

    aput-object v6, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v3, 0x8

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_7
    return-object v4
.end method

.method public static toDoubleArray([Lcom/visionobjects/myscript/internal/engine/Float64;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid array: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/visionobjects/myscript/internal/engine/Float64;->get()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static toDoubleArray([Lcom/visionobjects/myscript/internal/engine/Float64;II)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid array: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset: must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    if-lt p1, v0, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid offset: must be < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p0

    if-le p2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid offset / length pair: out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-array v3, p2, [D

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/visionobjects/myscript/internal/engine/Float64;->get()D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_6
    return-object v3
.end method


# virtual methods
.method public final get()D
    .locals 2

    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final set(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide v5, 0x7fefffffffffffffL

    const-wide v3, -0x10000000000001L

    cmpg-double v0, p1, v3

    if-ltz v0, :cond_0

    cmpl-double v0, p1, v5

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not lie in the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final set(F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide v5, 0x7fefffffffffffffL

    const-wide v3, -0x10000000000001L

    float-to-double v0, p1

    cmpg-double v0, v0, v3

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v5

    if-gtz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not lie in the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->getOffset()I

    move-result v1

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/visionobjects/myscript/internal/engine/Float64;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method